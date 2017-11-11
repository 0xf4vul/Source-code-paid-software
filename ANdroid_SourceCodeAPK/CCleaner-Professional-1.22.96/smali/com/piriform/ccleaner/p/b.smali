.class public abstract Lcom/piriform/ccleaner/p/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/e",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final UNHANDLED_ON_ERROR_MESSAGE:Ljava/lang/String; = "Unhandled onError! Override and deal with this better!"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected logToCrashlytics(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/j/bl;->c()Lcom/piriform/ccleaner/b/e;

    move-result-object v0

    .line 34
    invoke-interface {v0, p2, p1}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 27
    const-string/jumbo v0, "Unhandled onError! Override and deal with this better!"

    invoke-virtual {p0, p1, v0}, Lcom/piriform/ccleaner/p/b;->logToCrashlytics(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "Unhandled onError! Override and deal with this better!"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 29
    new-instance v0, Lf/b/f;

    const-string/jumbo v1, "Unhandled onError! Override and deal with this better!"

    invoke-direct {v0, v1, p1}, Lf/b/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 17
    return-void
.end method
