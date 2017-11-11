.class final Lcom/b/a/c/z$h;
.super Lcom/b/a/c/z$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field a:Lcom/b/a/c/b;


# direct methods
.method public constructor <init>(Lcom/b/a/c/b;)V
    .locals 2

    .prologue
    .line 264
    const/4 v0, 0x6

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/b/a/c/z$j;

    invoke-direct {p0, v0, v1}, Lcom/b/a/c/z$j;-><init>(I[Lcom/b/a/c/z$j;)V

    .line 265
    iput-object p1, p0, Lcom/b/a/c/z$h;->a:Lcom/b/a/c/b;

    .line 266
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 270
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/b/a/c/z$h;->a:Lcom/b/a/c/b;

    invoke-static {v0, v1}, Lcom/b/a/c/e;->b(ILcom/b/a/c/b;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/b/a/c/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/b/a/c/z$h;->a:Lcom/b/a/c/b;

    invoke-virtual {p1, v0, v1}, Lcom/b/a/c/e;->a(ILcom/b/a/c/b;)V

    .line 276
    return-void
.end method
