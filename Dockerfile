# Use a lightweight web server image
FROM public.ecr.aws/nginx/nginx:stable-perl

# Copy the index.html file to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off"]

