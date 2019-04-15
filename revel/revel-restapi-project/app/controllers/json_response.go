package controllers

type JsonResponse struct {
	Success bool        `json:"success"`
	Data    map[string]string      `json:"Data"`
	Error   string      `json:"error"`
}
