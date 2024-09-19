FROM dart:3.3.0 AS build

WORKDIR /app
COPY . .

RUN dart pub global activate jaspr_cli
RUN dart pub get
# RUN dart compile exe bin/main.dart -o bin/server
RUN jaspr build -i bin/main.dart -v

FROM alpine:latest

ENV runmode=production
ENV serverid=default
ENV logging=normal
ENV role=monolith

COPY --from=build /runtime/ /
# COPY --from=build /app/bin/server server
COPY --from=build /app/build/jaspr/app /app/bin/main
COPY --from=build /app/config/ config/
# COPY --from=build /app/web/ web/
COPY --from=build /app/build/jaspr/web/ web/

EXPOSE 8080
EXPOSE 8081
EXPOSE 8082

ENTRYPOINT ./server --mode=$runmode --server-id=$serverid --logging=$logging --role=$role
