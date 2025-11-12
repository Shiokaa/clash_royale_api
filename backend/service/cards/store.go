package cards

import (
	"database/sql"
	"encoding/json"

	"clash_royale_api/backend/types"
)

type Store struct {
	db *sql.DB
}

func NewStore(db *sql.DB) *Store {
	return &Store{db: db}
}

func (s *Store) GetAllCards() ([]types.Card, error) {
	rows, err := s.db.Query(`SELECT id, name, description, rarity, type, unlocked_arena, elixir_cost, image_url, stats FROM cards`)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var cards []types.Card
	for rows.Next() {
		var c types.Card
		var imageURL sql.NullString
		var stats sql.NullString

		if err := rows.Scan(&c.Id, &c.Name, &c.Description, &c.Rarity, &c.Card_type, &c.Unlocked_arena, &c.Elixir_cost, &imageURL, &stats); err != nil {
			return nil, err
		}

		if imageURL.Valid {
			c.Image_url = imageURL.String
		} else {
			c.Image_url = ""
		}

		if stats.Valid {
			c.Stats = json.RawMessage(stats.String)
		} else {
			c.Stats = nil
		}

		cards = append(cards, c)
	}

	if err := rows.Err(); err != nil {
		return nil, err
	}

	return cards, nil
}

func (s *Store) GetCardByID(id int) (*types.Card, error) {
	rows, err := s.db.Query(`SELECT id, name, description, rarity, type, unlocked_arena, elixir_cost, image_url, stats FROM cards WHERE id = ?`, id)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	if rows.Next() {
		var c types.Card
		var imageURL sql.NullString
		var stats sql.NullString
		if err := rows.Scan(&c.Id, &c.Name, &c.Description, &c.Rarity, &c.Card_type, &c.Unlocked_arena, &c.Elixir_cost, &imageURL, &stats); err != nil {
			return nil, err
		}
		if imageURL.Valid {
			c.Image_url = imageURL.String
		} else {
			c.Image_url = ""
		}
		if stats.Valid {
			c.Stats = json.RawMessage(stats.String)
		} else {
			c.Stats = nil
		}
		return &c, nil
	}
	return nil, sql.ErrNoRows

}
