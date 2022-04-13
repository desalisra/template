package orderlist

// List Order
type Orders struct {
	OutCode string `db:"Req_OutCode" json:"outCode"`
	Number string `db:"Req_Number" json:"number"`
	Date string `db:"Req_Date" json:"date"`
	ConfirmYN string `db:"Req_ConfirmYN" json:"confirmYN"`
	Printed int `db:"Req_Printed" json:"printed"`
	TotalNetPrice int `db:"Req_TotalNetPrice" json:"totalNetPrice"`
	TotalQtyDetail int `db:"Req_TotalQtyDetail" json:"totalQtyDetail"`
	ConfirmBy int `db:"Req_ConfirmBy" json:"confirmBy"`
	LastUpdate string `db:"Req_LastUpdate" json:"lastUpdate"`
	UserID int `db:"Req_UserID" json:"userID"`
	RecordNum int `db:"Req_RecordNum" json:"recordNum"`
	ActiveYN string `db:"Req_ActiveYN" json:"activeYN"`
	Type string `db:"Req_Type" json:"type"`
}
