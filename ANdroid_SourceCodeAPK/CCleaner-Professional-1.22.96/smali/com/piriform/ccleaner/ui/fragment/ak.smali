.class public final Lcom/piriform/ccleaner/ui/fragment/ak;
.super Lcom/piriform/ccleaner/ui/fragment/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/ui/fragment/t",
        "<",
        "Lcom/piriform/ccleaner/a/a/t;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lcom/piriform/ccleaner/core/data/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/piriform/ccleaner/a/h;->b:Lcom/piriform/ccleaner/a/h;

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/t;-><init>(Lcom/piriform/ccleaner/a/h;)V

    .line 22
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/core/data/h;)Lcom/piriform/ccleaner/ui/fragment/ak;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/ak;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/fragment/ak;-><init>()V

    .line 26
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 27
    const-string/jumbo v2, "ARG_TYPE"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 28
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/fragment/ak;->e(Landroid/os/Bundle;)V

    .line 29
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/t;->a(Landroid/app/Activity;)V

    .line 1568
    iget-object v0, p0, Landroid/support/v4/app/h;->p:Landroid/os/Bundle;

    .line 35
    const-string/jumbo v1, "ARG_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/h;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ak;->d:Lcom/piriform/ccleaner/core/data/h;

    .line 36
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ak;->d:Lcom/piriform/ccleaner/core/data/h;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "messageType not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    return-void
.end method

.method protected final synthetic a(Lcom/piriform/ccleaner/a/a/a;)V
    .locals 4

    .prologue
    .line 15
    check-cast p1, Lcom/piriform/ccleaner/a/a/t;

    .line 2043
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ak;->d:Lcom/piriform/ccleaner/core/data/h;

    .line 2186
    iget-object v1, p1, Lcom/piriform/ccleaner/a/a/t;->k:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/piriform/ccleaner/a/a/t;->a(Ljava/util/List;Lcom/piriform/ccleaner/core/data/h;)Ljava/util/List;

    move-result-object v0

    .line 2045
    new-instance v1, Lcom/piriform/ccleaner/core/a/c;

    const-class v2, Lcom/piriform/ccleaner/core/data/h;

    iget-object v3, p0, Lcom/piriform/ccleaner/ui/fragment/ak;->b:Lcom/piriform/ccleaner/core/a/h;

    invoke-direct {v1, v2, v3}, Lcom/piriform/ccleaner/core/a/c;-><init>(Ljava/lang/Class;Lcom/piriform/ccleaner/core/a/e;)V

    .line 2046
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/ak;->b:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v2, v1}, Lcom/piriform/ccleaner/core/a/h;->a(Lcom/piriform/ccleaner/core/a/c;)V

    .line 2047
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/ak;->a(Ljava/util/List;)V

    .line 15
    return-void
.end method
