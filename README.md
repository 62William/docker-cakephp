docker-cakephp
======================

Usage
-----
To create the image `62William/cakephp`, execute the following command on the docker-cakephp folder:

	docker build -t 62William/cakephp .

You can now push your new image to the registry:

	docker push 62William/cakephp


Running your CakePHP docker image
-----------------------------------

Start your image:

	docker run -d -p 80:80 62William/cakephp

Test your deployment:

	curl http://localhost/

You can now start using your CakePHP container!
