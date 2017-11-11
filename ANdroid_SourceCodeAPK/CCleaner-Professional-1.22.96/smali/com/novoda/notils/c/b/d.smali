.class public final Lcom/novoda/notils/c/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/novoda/notils/c/b/c;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/novoda/notils/c/b/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/novoda/notils/c/b/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
