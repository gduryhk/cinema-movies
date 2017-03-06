package controllers

import (
	"github.com/gduryhk/cinema-movies/models"
)

type (
	// For Get - /movies
	MoviesResource struct {
		Data []models.Movie `json:"data"`
	}
	// For Post/Put - /movies
	MovieResource struct {
		Data models.Movie `json:"data"`
	}
)
