// Package types
package types

import "encoding/json"

type Card struct {
	Id             int					`json:"id"`
	Name           string				`json:"name"`
	Description    string				`json:"description"`
	Rarity         string				`json:"rarity"`
	Card_type      string				`json:"type"`
	Unlocked_arena int					`json:"unlocked_arena"`
	Elixir_cost    int					`json:"elixir_cost"`
	Image_url      string				`json:"image_url"`
	Stats          json.RawMessage		`json:"stats"`
}
