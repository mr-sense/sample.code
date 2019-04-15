package controllers

import (
	"encoding/json"
	"github.com/revel/revel"
)

type UserController struct {
	*revel.Controller
}

func (c UserController) GetUsers() revel.Result {
	mapD := map[string]string{"id": "abc", "name": "mrsense", "email": "mr.sense@daum.net"}

	response := JsonResponse{}
	response.Data = mapD

	return c.RenderJSON(response)
}
