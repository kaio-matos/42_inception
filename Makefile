NAME		=	inception
MARIADB		=	mariadb
SRCS_DIR	=	./srcs
MARIADB_DIR	=	$(SRCS_DIR)/requirements/$(MARIADB)
# docker run $(MARIADB) --name=$(MARIADB)

all:

mariadb:
	docker build -t $(MARIADB) $(MARIADB_DIR)
	docker network rm $(NAME)
	docker network create --driver bridge inception
	docker service create \
	--network $(NAME) \
	--name $(MARIADB) \
	--mount 'type=volume,source=kmatos-s,destination=/app' \
	$(MARIADB)




clean:

fclean:

.PHONY: mariadb all clean fclean
