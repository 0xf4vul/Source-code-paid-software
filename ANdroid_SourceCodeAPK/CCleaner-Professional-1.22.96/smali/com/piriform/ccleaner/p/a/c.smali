.class public final Lcom/piriform/ccleaner/p/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lf/c/e;)Lf/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/c/e",
            "<",
            "Landroid/database/Cursor;",
            "TT;>;)",
            "Lf/c/e",
            "<",
            "Landroid/database/Cursor;",
            "Lf/d",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/piriform/ccleaner/p/a/c$2;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/p/a/c$2;-><init>(Lf/c/e;)V

    return-object v0
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lf/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lf/d",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/piriform/ccleaner/p/a/c$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/p/a/c$1;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0}, Lf/d;->a(Ljava/util/concurrent/Callable;)Lf/d;

    move-result-object v0

    return-object v0
.end method
