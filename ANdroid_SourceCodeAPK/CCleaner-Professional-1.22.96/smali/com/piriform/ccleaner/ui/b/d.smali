.class public Lcom/piriform/ccleaner/ui/b/d;
.super Lcom/piriform/ccleaner/core/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/b/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/core/a/b",
        "<",
        "Lcom/piriform/ccleaner/a/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lcom/piriform/ccleaner/ui/b/b;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/a/a/d;Lcom/piriform/ccleaner/ui/b/b;)V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/piriform/ccleaner/core/a/g;->j:Lcom/piriform/ccleaner/core/a/g;

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/ui/b/d;-><init>(Lcom/piriform/ccleaner/a/a/d;Lcom/piriform/ccleaner/ui/b/b;Lcom/piriform/ccleaner/core/a/g;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/piriform/ccleaner/a/a/d;Lcom/piriform/ccleaner/ui/b/b;Lcom/piriform/ccleaner/core/a/g;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0, p1, p3}, Lcom/piriform/ccleaner/core/a/b;-><init>(Ljava/lang/Object;Lcom/piriform/ccleaner/core/a/g;)V

    .line 32
    iput-object p2, p0, Lcom/piriform/ccleaner/ui/b/d;->d:Lcom/piriform/ccleaner/ui/b/b;

    .line 1063
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/d;->d:Lcom/piriform/ccleaner/ui/b/b;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/b/d;->b()Lcom/piriform/ccleaner/a/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/ui/b/b;->a(Lcom/piriform/ccleaner/a/h;)Z

    move-result v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/b/d;->a(Z)V

    .line 34
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/novoda/notils/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Use "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to create a view"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/piriform/ccleaner/core/a/r;)V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/core/a/b;->a(Lcom/piriform/ccleaner/core/a/r;)V

    .line 40
    new-instance v1, Lcom/piriform/ccleaner/ui/b/t;

    invoke-direct {v1, p1}, Lcom/piriform/ccleaner/ui/b/t;-><init>(Lcom/piriform/ccleaner/core/a/r;)V

    .line 2059
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 41
    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/a/a/d;->a(Landroid/os/Handler;)V

    .line 42
    return-void
.end method

.method public final b()Lcom/piriform/ccleaner/a/h;
    .locals 1

    .prologue
    .line 50
    .line 3059
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 50
    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    .line 51
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->m()Lcom/piriform/ccleaner/a/h;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Z
    .locals 1

    .prologue
    .line 67
    .line 4059
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 67
    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->r()Z

    move-result v0

    return v0
.end method
