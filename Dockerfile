# Use official nginx image as base
FROM nginx:alpine

# Copy our HTML files to nginx web directory
COPY hello-world/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# nginx starts automatically with the base image
CMD ["nginx", "-g", "daemon off;"]