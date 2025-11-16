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

      <main className="max-w-7xl mx-auto">
        {cards.length === 0 ? (
          <div className="text-center text-white text-xl py-12">
            No cards found 😕
          </div>
        ) : (
          <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 gap-4 md:gap-6">
            {cards.map((card) => (
              <CardComponent key={card.id} card={card} onSelect={handleSelectCard} />
            ))}
          </div>
        )}
      </main>

       <CardDetailModal card={selectedCard} onClose={handleCloseModal} /> 
    </div>
  );
}