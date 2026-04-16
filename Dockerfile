# Use the official Apache HTTP Server image
FROM httpd:2.4

# Remove the default Apache website
RUN rm -rf /usr/local/apache2/htdocs/*

# Copy the custom index.html to Apache's root directory
COPY index.html /usr/local/apache2/htdocs/

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["httpd-foreground"]
