# DashBoard Query

## 생성되는 Movies의 숫자 모니터링하기

```sql
SELECT date_trunc('minute', created_at) AS "time",
 COUNT(movie_id)
FROM movies
GROUP BY date_trunc('minute', created_at)
```

- 해당 쿼리를 통해 분당 생성되는 movies의 숫자 모니터링 가능
- Movies가 생성되는 Interval에 따라 적절하게 쿼리를 조정