import React from 'react';
import { Card } from '../types';

interface CardDetailModalProps {
  card: Card | null;
  onClose: () => void;
}

const CardDetailModal: React.FC<CardDetailModalProps> = ({ card, onClose }) => {
  if (!card) return null;

  const rarityColorMap: Record<string, string> = {
    'Common': 'text-gray-300 border-gray-400',
    'Rare': 'text-orange-400 border-orange-400',
    'Epic': 'text-purple-400 border-purple-400',
    'Legendary': 'text-yellow-300 border-yellow-400',
    'Champion': 'text-indigo-400 border-indigo-400',
  };

  const rarityBgMap: Record<string, string> = {
    'Common': 'from-gray-600 to-gray-800',
    'Rare': 'from-orange-500 to-orange-700',
    'Epic': 'from-purple-600 to-purple-800',
    'Legendary': 'from-yellow-500 to-yellow-700',
    'Champion': 'from-indigo-500 to-indigo-700',
  };

  return (
    <div 
        className="fixed inset-0 bg-black/70 backdrop-blur-md flex justify-center items-center z-50 p-4 animate-fadeIn"
        onClick={onClose}
    >
      <div 
        className={`bg-gradient-to-br ${rarityBgMap[card.rarity] || 'from-gray-600 to-gray-800'} rounded-2xl shadow-2xl w-full max-w-md mx-auto border-2 ${rarityColorMap[card.rarity]?.split(' ')[1] || 'border-gray-400'} transform transition-all duration-300 scale-95 hover:scale-100 overflow-hidden`}
        onClick={(e) => e.stopPropagation()}
      >
        {/* Image Section */}
        <div className="relative bg-gradient-to-br from-slate-800 to-slate-900 p-4">
          <img 
            src={card.image_url || 'https://via.placeholder.com/400x300?text=No+Image'} 
            alt={card.name} 
            className="w-full h-48 object-contain drop-shadow-2xl"
            onError={(e) => {
              (e.target as HTMLImageElement).src = 'https://via.placeholder.com/400x300?text=No+Image';
            }}
          />
          
          {/* Close Button */}
          <button
            onClick={onClose}
            className="absolute top-2 right-2 bg-gray-900/80 text-white rounded-full p-2 hover:bg-gray-800 transition-colors shadow-lg backdrop-blur-sm"
            aria-label="Close modal"
          >
            <svg xmlns="http://www.w3.org/2000/svg" className="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M6 18L18 6M6 6l12 12" />
            </svg>
          </button>

          {/* Elixir Cost Badge */}
          <div className="absolute top-2 left-2 bg-gradient-to-br from-pink-500 to-pink-700 text-white text-xl font-bold w-12 h-12 rounded-full flex items-center justify-center shadow-2xl border-3 border-pink-300">
            {card.elixir_cost}
          </div>
        </div>

        {/* Content Section */}
        <div className="p-4 bg-slate-900/90 backdrop-blur-sm">
          <div className="flex justify-between items-start mb-3">
            <div>
              <h2 className="text-2xl font-bold text-white mb-1">{card.name}</h2>
              <div className="flex items-center gap-2 text-xs">
                <span className={`font-bold ${rarityColorMap[card.rarity]?.split(' ')[0] || 'text-gray-300'}`}>
                  {card.rarity}
                </span>
                <span className="text-gray-400">•</span>
                <span className="text-cyan-400 font-semibold">{card.type}</span>
                <span className="text-gray-400">•</span>
                <span className="text-gray-300">🏟️ Arena {card.unlocked_arena}</span>
              </div>
            </div>
          </div>

          {/* Description */}
          <div className="mb-4">
            <h3 className="text-cyan-400 font-bold text-sm mb-1">📜 Description</h3>
            <p className="text-gray-200 leading-relaxed text-sm">
              {card.description}
            </p>
          </div>

          {/* Stats Section */}
          {card.stats && Object.keys(card.stats).length > 0 && (
            <div className="mt-3 p-3 bg-gray-800/80 rounded-lg border border-gray-700">
              <h3 className="text-sm font-bold text-cyan-400 mb-2 flex items-center gap-2">
                📊 Stats
              </h3>
              <div className="grid grid-cols-2 gap-2">
                {Object.entries(card.stats).map(([key, value]) => (
                  <div key={key} className="bg-gray-900/60 p-2 rounded-lg border border-gray-600">
                    <div className="text-xs text-gray-400 uppercase tracking-wide mb-0.5">
                      {key.replace(/_/g, ' ')}
                    </div>
                    <div className="text-white font-bold text-sm">
                      {typeof value === 'object' ? JSON.stringify(value) : String(value)}
                    </div>
                  </div>
                ))}
              </div>
            </div>
          )}

          {/* Action Button */}
          <button
            onClick={onClose}
            className="mt-4 w-full bg-cyan-600 hover:bg-cyan-500 text-white font-bold py-2 px-4 rounded-lg transition-colors shadow-lg text-sm"
          >
            Close
          </button>
        </div>
      </div>
    </div>
  );
};

export default CardDetailModal;