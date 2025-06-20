# Stage: runtime web server for WebGL build
FROM nginx:alpine

# Copy the built WebGL files into the nginx html folder
COPY UnityGuessNumberGame/WebGLBuild/ /usr/share/nginx/html/

# Expose port 80 and start nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
