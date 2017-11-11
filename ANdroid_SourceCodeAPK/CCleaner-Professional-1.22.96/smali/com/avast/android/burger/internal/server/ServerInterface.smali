.class public interface abstract Lcom/avast/android/burger/internal/server/ServerInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract sendData(Lcom/avast/a/b/a/a$e;)Lretrofit/client/Response;
    .param p1    # Lcom/avast/a/b/a/a$e;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/receive3"
    .end annotation
.end method
