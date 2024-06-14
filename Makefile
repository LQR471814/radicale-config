image:
	docker build -t lqr471814/radicale-config .

run:
	docker run -dp 5232:5232 -t lqr471814/radicale-config

