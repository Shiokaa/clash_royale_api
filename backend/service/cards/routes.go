// Package cards
package cards

import (
	"database/sql"
	"encoding/json"
	"log"
	"net/http"
	"strconv"

	"github.com/gorilla/mux"
)

type Handler struct {
	store *Store
}

func NewHandler(db *sql.DB) *Handler {
	return &Handler{store: NewStore(db)}
}

func (h *Handler) CardsRoutes(router *mux.Router) {
	router.HandleFunc("/cards", h.handleGetCards).Methods("GET")
	router.HandleFunc("/cards/{id}", h.handleCardByID).Methods("GET")
}

func (h *Handler) handleGetCards(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")

	cards, err := h.store.GetAllCards()
	if err != nil {
		log.Printf("store GetAll error: %v", err)
		http.Error(w, "internal server error", http.StatusInternalServerError)
		return
	}

	if err := json.NewEncoder(w).Encode(cards); err != nil {
		log.Printf("encode error: %v", err)
	}
}

func (h *Handler) handleCardByID(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	vars := mux.Vars(r)
	idStr, ok := vars["id"]
	if !ok {
		http.Error(w, "missing card ID", http.StatusBadRequest)
		return
	}

	id, err := strconv.Atoi(idStr)
	if err != nil {
		http.Error(w, "invalid card ID", http.StatusBadRequest)
		return
	}
	card, err := h.store.GetCardByID(id)
	if err != nil {
		log.Printf("store GetCardByID error: %v", err)
		http.Error(w, "internal server error", http.StatusInternalServerError)
		return
	}
	if card == nil {
		http.Error(w, "card not found", http.StatusNotFound)
		return
	}
	if err := json.NewEncoder(w).Encode(card); err != nil {
		log.Printf("encode error: %v", err)
	}
}
