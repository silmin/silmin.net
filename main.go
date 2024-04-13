package main

import (
	"os"
	"path/filepath"

	"github.com/labstack/echo/v4"
)

func main() {
	e := echo.New()
	e.HideBanner = true
	htmlPath := "./pub/html/"
	assetPath := "./static/"
	e.Static("/css", filepath.Join(assetPath, "/css"))
	e.Static("/image", filepath.Join(assetPath, "/image"))
	e.File("/", filepath.Join(htmlPath, "/index.html"))

	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}
	e.Logger.Fatal(e.Start(":" + port))
}
