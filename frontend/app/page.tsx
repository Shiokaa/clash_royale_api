'use client';

import { useState, useEffect, useCallback } from 'react';
import { Card } from '../src/types';
import { fetchCards } from '../src/services/apiService';
import CardComponent from '../src/components/Card';
import CardDetailModal from '../src/components/CardDetailModal';

export default function Home() {
  const [cards, setCards] = useState<Card[]>([]);
  const [selectedCard, setSelectedCard] = useState<Card | null>(null);
  const [isLoading, setIsLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);

  // États pour les filtres
  const [searchTerm, setSearchTerm] = useState('');
  const [filterRarity, setFilterRarity] = useState('All');
  const [filterType, setFilterType] = useState('All');
  const [filterElixir, setFilterElixir] = useState('All');
  const [sortBy, setSortBy] = useState('name');

  const loadCards = useCallback(async () => {
    try {
      setIsLoading(true);
      setError(null);
      const fetchedCards = await fetchCards();
      console.log('Cards loaded:', fetchedCards);
      setCards(fetchedCards);
    } catch (err) {
      setError('Failed to load cards. Please try again later.');
      console.error(err);
    } finally {
      setIsLoading(false);
    }
  }, []);

  useEffect(() => {
    loadCards();
  }, [loadCards]);

  const handleSelectCard = (card: Card) => {
    console.log('Carte sélectionnée:', card);
    setSelectedCard(card);
  };

  const handleCloseModal = () => {
    setSelectedCard(null);
  };

  // Fonction de filtrage et tri
  const filteredAndSortedCards = cards
    .filter(card => {
      // Filtre par recherche
      const matchesSearch = card.name.toLowerCase().includes(searchTerm.toLowerCase());
      
      // Filtre par rareté (insensible à la casse)
      const matchesRarity = filterRarity === 'All' || 
        card.rarity.toLowerCase() === filterRarity.toLowerCase();
      
      // Filtre par type (insensible à la casse)
      const matchesType = filterType === 'All' || 
        card.type.toLowerCase() === filterType.toLowerCase();
      
      // Filtre par coût d'élixir
      const matchesElixir = filterElixir === 'All' || 
        (filterElixir === '1-3' && card.elixir_cost >= 1 && card.elixir_cost <= 3) ||
        (filterElixir === '4-6' && card.elixir_cost >= 4 && card.elixir_cost <= 6) ||
        (filterElixir === '7+' && card.elixir_cost >= 7);
      
      // Debug (à supprimer après test)
      if (!matchesRarity || !matchesType) {
        console.log('Card:', card.name, '| Type:', card.type, '| Rarity:', card.rarity);
      }
      
      return matchesSearch && matchesRarity && matchesType && matchesElixir;
    })
    .sort((a, b) => {
      switch (sortBy) {
        case 'name':
          return a.name.localeCompare(b.name);
        case 'elixir-asc':
          return a.elixir_cost - b.elixir_cost;
        case 'elixir-desc':
          return b.elixir_cost - a.elixir_cost;
        case 'arena':
          return a.unlocked_arena - b.unlocked_arena;
        case 'rarity':
          const rarityOrder: Record<string, number> = {
            'Common': 1,
            'Rare': 2,
            'Epic': 3,
            'Legendary': 4,
            'Champion': 5
          };
          return (rarityOrder[a.rarity] || 0) - (rarityOrder[b.rarity] || 0);
        default:
          return 0;
      }
    });

  // Fonction pour réinitialiser les filtres
  const resetFilters = () => {
    setSearchTerm('');
    setFilterRarity('All');
    setFilterType('All');
    setFilterElixir('All');
    setSortBy('name');
  };

  if (isLoading) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-blue-900 via-purple-900 to-pink-900 flex items-center justify-center">
        <div className="text-center">
          <div className="animate-spin rounded-full h-32 w-32 border-b-4 border-white mx-auto mb-4"></div>
          <p className="text-white text-2xl font-bold">Loading your cards...</p>
        </div>
      </div>
    );
  }

  if (error) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-blue-900 via-purple-900 to-pink-900 flex items-center justify-center">
        <div className="bg-red-600 text-white p-8 rounded-xl shadow-2xl max-w-md">
          <h2 className="text-2xl font-bold mb-4">❌ Error</h2>
          <p className="mb-4">{error}</p>
          <button 
            onClick={loadCards}
            className="bg-white text-red-600 px-6 py-2 rounded-lg font-bold hover:bg-gray-100 transition"
          >
            Retry
          </button>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-900 via-purple-900 to-pink-900 py-8 px-4">
      <header className="max-w-7xl mx-auto mb-8 text-center">
        <h1 className="text-5xl md:text-6xl font-bold text-white mb-2 drop-shadow-lg">
          ⚔️ Clash Royale <span className="text-cyan-400">Cards</span>
        </h1>
        <p className="text-gray-300 text-lg">
          {cards.length} card{cards.length !== 1 ? 's' : ''} available • Click to see details
        </p>
      </header>

      {/* Section des filtres */}
      <div className="max-w-7xl mx-auto mb-6 bg-slate-800/50 backdrop-blur-sm p-4 rounded-xl shadow-xl border border-slate-700">
        {/* Barre de recherche */}
        <div className="mb-4">
          <input
            type="text"
            placeholder="🔍 Search cards by name..."
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
            className="w-full px-4 py-3 bg-slate-700 text-white rounded-lg focus:outline-none focus:ring-2 focus:ring-cyan-500 placeholder-gray-400"
          />
        </div>

        {/* Filtres en grille */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-3 mb-3">
          {/* Filtre Rareté */}
          <select
            value={filterRarity}
            onChange={(e) => setFilterRarity(e.target.value)}
            className="px-4 py-2.5 bg-slate-700 text-white rounded-lg focus:outline-none focus:ring-2 focus:ring-cyan-500 text-sm"
          >
            <option value="All">All Rarities</option>
            <option value="Common">Common</option>
            <option value="Rare">Rare</option>
            <option value="Epic">Epic</option>
            <option value="Legendary">Legendary</option>
            <option value="Champion">Champion</option>
          </select>

          {/* Filtre Type */}
          <select
            value={filterType}
            onChange={(e) => setFilterType(e.target.value)}
            className="px-4 py-2.5 bg-slate-700 text-white rounded-lg focus:outline-none focus:ring-2 focus:ring-cyan-500 text-sm"
          >
            <option value="All">All Types</option>
            <option value="Troop">Troop</option>
            <option value="Spell">Spell</option>
            <option value="Building">Building</option>
          </select>

          {/* Filtre Élixir */}
          <select
            value={filterElixir}
            onChange={(e) => setFilterElixir(e.target.value)}
            className="px-4 py-2.5 bg-slate-700 text-white rounded-lg focus:outline-none focus:ring-2 focus:ring-cyan-500 text-sm"
          >
            <option value="All">All Elixir Costs</option>
            <option value="1-3">💧 1-3</option>
            <option value="4-6">💧💧 4-6</option>
            <option value="7+">💧💧💧 7+</option>
          </select>

          {/* Tri */}
          <select
            value={sortBy}
            onChange={(e) => setSortBy(e.target.value)}
            className="px-4 py-2.5 bg-slate-700 text-white rounded-lg focus:outline-none focus:ring-2 focus:ring-cyan-500 text-sm"
          >
            <option value="name">Sort: Name (A-Z)</option>
            <option value="elixir-asc">Sort: Elixir (Low-High)</option>
            <option value="elixir-desc">Sort: Elixir (High-Low)</option>
            <option value="arena">Sort: Arena</option>
            <option value="rarity">Sort: Rarity</option>
          </select>
        </div>

        {/* Compteur et bouton reset */}
        <div className="flex justify-between items-center text-sm">
          <span className="text-gray-300">
            {filteredAndSortedCards.length} card{filteredAndSortedCards.length !== 1 ? 's' : ''} found
          </span>
          
          {(searchTerm || filterRarity !== 'All' || filterType !== 'All' || filterElixir !== 'All' || sortBy !== 'name') && (
            <button
              onClick={resetFilters}
              className="px-4 py-1.5 bg-red-600 hover:bg-red-500 text-white rounded-lg transition-colors text-xs font-semibold"
            >
              Reset Filters
            </button>
          )}
        </div>
      </div>

      <main className="max-w-7xl mx-auto">
        {filteredAndSortedCards.length === 0 ? (
          <div className="text-center text-white text-xl py-12">
            No cards found 😕
          </div>
        ) : (
          <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 gap-4 md:gap-6">
            {filteredAndSortedCards.map((card) => (
              <CardComponent key={card.id} card={card} onSelect={handleSelectCard} />
            ))}
          </div>
        )}
      </main>

      <CardDetailModal card={selectedCard} onClose={handleCloseModal} /> 
    </div>
  );
}