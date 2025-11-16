
export enum CardRarity {
  Common = 'Common',
  Rare = 'Rare',
  Epic = 'Epic',
  Legendary = 'Legendary',
  Champion = 'Champion',
}

export enum CardType {
  Troop = 'Troop',
  Building = 'Building',
  Spell = 'Spell',
}

export interface Card {
  id: number;
  name: string; 
  description: string; 
  rarity: string; 
  type: string; 
  unlocked_arena: number;
  elixir_cost: number; 
  image_url: string;           
  stats: any | null;             
}


export const isValidRarity = (rarity: string): rarity is CardRarity => {
  return Object.values(CardRarity).includes(rarity as CardRarity);
};

export const isValidCardType = (type: string): type is CardType => {
  return Object.values(CardType).includes(type as CardType);
};