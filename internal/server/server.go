package server

import (
	"log"
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/sekthor/gcp-dev-ops-test/pkg/message"
)

func GetMessage(c *gin.Context) {
	c.JSON(http.StatusOK, &message.Message{
		Body: "Hello World",
	})
}

func Start() {
	router := gin.Default()

	router.GET("/", GetMessage)

	err := router.Run()

	if err != nil {
		log.Fatal("Could not start server")
	}
}
