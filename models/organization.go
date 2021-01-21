package models

import "time"

// User represents the user model for gophish.
type Organization struct {
	Id             int64     `json:"id"`
	Name           string    `json:"name" sql:"not null;unique"`
	Email          string    `json:"email" sql:"not null;unique"`
	ITAdminContact string    `json:"it_contact"`
	Description    string    `json:"description"`
	Active         bool      `json:"active"`
	CreatedAt      time.Time `json:"created_at"`
	CreatedBy      int64     `json:"-" gorm:"column:created_by"`
}
