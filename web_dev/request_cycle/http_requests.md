# What are some common HTTP status codes?

1. 200 OK
2. 300 Multiple Choices
3. 301 Moved Permanently
4. 302 Found
5. 304 Not Modified
6. 307 Temporary Redirect
7. 400 Bad Request
8. 401 Unauthorized
9. 403 Forbidden
10. 404 Not Found
11. 410 Gone
12. 500 Internal Server Error
13. 501 Not Implemented
14. 503 Service Unavailable
15. 550 Permission denied

# What is the difference between a GET request and a POST request? When might each be used?

1. GET - Requests data from a specified resource
-  is used to retrieve remote data
- should never be used when dealing with sensitive data
- should be used only to retrieve data
- have length restrictions(maximum URL length is 2048 characters)
- data is visible to everyone in the URL

2. POST - Submits data to be processed to a specified resource
- is used to insert/update remote data
- have no restrictions on data length
- data is not displayed in the URL

# What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
- cookies are usually small text files, given ID tags that are stored on your computer's browser directory or program data subfolders. Cookies are created when you use your browser to visit a website that uses cookies to keep track of your movements within the site, help you resume where you left off, remember your registered login, theme selection, preferences, and other customization functions.
- the HTTP protocol includes the basic access authentication and the digest access authentication protocols, which allow access to a web page only when the user has provided the correct username and password. If the server requires such credentials for granting access to a web page, the browser requests them from the user and, once obtained, the browser stores and sends them in every subsequent page request.