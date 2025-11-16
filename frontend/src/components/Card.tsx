import React from 'react';
import { Card } from '../types';

interface CardComponentProps {
  card: Card;
  onSelect: (card: Card) => void;
}

const CardComponent: React.FC<CardComponentProps> = ({ card, onSelect }) => {
  // Couleurs de fond selon la rareté
  const rarityColors: Record<string, string> = {
    Common: 'from-gray-600 to-gray-800 border-gray-400',
    Rare: 'from-orange-500 to-orange-700 border-orange-400',
    Epic: 'from-purple-600 to-purple-800 border-purple-400',
    Legendary: 'from-yellow-500 to-yellow-700 border-yellow-400'
  };

  // Badge de rareté
  const rarityBadgeColors: Record<string, string> = {
    Common: 'bg-gray-600',
    Rare: 'bg-orange-500',
    Epic: 'bg-purple-600',
    Legendary: 'bg-yellow-500'
  };

  const gradientClass = rarityColors[card.rarity] || 'from-gray-600 to-gray-800 border-gray-400';
  const badgeColor = rarityBadgeColors[card.rarity] || 'bg-gray-600';

  return (
    <div
      onClick={() => onSelect(card)}
      className={`relative bg-gradient-to-br ${gradientClass} rounded-xl border-2 overflow-hidden cursor-pointer transform transition-all duration-300 hover:scale-105 hover:shadow-2xl hover:shadow-cyan-500/50 group`}
    >
      {/* Image container */}
      <div className="relative bg-gradient-to-br from-slate-800 to-slate-900 p-3">
        <img
          src={card.image_url || 'https://via.placeholder.com/150?text=Card'}
          alt={card.name}
          className="w-full h-32 sm:h-40 object-contain drop-shadow-2xl group-hover:scale-110 transition-transform duration-300"
          onError={(e) => {
            (e.target as HTMLImageElement).src = 'https://via.placeholder.com/150?text=No+Image';
          }}
        />

        {/* Badge de rareté */}
        <div className={`absolute top-1 right-1 ${badgeColor} text-white text-xs font-bold px-2 py-1 rounded-full shadow-lg`}>
          {card.rarity}
        </div>

        {/* Coût en élixir */}
        <div className="absolute top-1 left-1 bg-gradient-to-br from-pink-500 to-pink-700 text-white text-base sm:text-lg font-bold w-8 h-8 sm:w-10 sm:h-10 rounded-full flex items-center justify-center shadow-lg border-2 border-pink-300">
          {card.elixir_cost}
        </div>
      </div>

      {/* Informations de la carte */}
      <div className="p-2 sm:p-3 bg-slate-900/80">
        <h3 className="text-sm sm:text-base font-bold text-white truncate mb-1">
          {card.name}
        </h3>

        <div className="flex items-center justify-between text-xs">
          <span className="bg-cyan-600 text-white px-2 py-0.5 rounded font-semibold">
            {card.type}
          </span>
          <span className="text-gray-300 text-xs">
            🏟️ {card.unlocked_arena}
          </span>
        </div>
      </div>

      {/* Indicateur hover */}
      <div className="absolute inset-0 bg-cyan-500/0 group-hover:bg-cyan-500/10 transition-all duration-300 pointer-events-none"></div>
    </div>
  );
};

export default CardComponent;