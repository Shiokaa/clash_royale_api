// Package cards
package cards

import (
	"net/http"

	"github.com/gorilla/mux"
)

type Handler struct {
}

func NewHandler() *Handler {
	return &Handler{}
}

func (h *Handler) CardsRoutes(router *mux.Router){
	router.HandleFunc("cards", h.handleCards).Methods("GET")
}

func (h *Handler) handleCards(w http.ResponseWriter, r *http.Request){

}