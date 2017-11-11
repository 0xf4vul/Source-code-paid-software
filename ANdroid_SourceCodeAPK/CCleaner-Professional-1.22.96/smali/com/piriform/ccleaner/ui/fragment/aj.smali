.class public abstract Lcom/piriform/ccleaner/ui/fragment/aj;
.super Lcom/piriform/ccleaner/ui/fragment/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/piriform/ccleaner/a/a/q;",
        ">",
        "Lcom/piriform/ccleaner/ui/fragment/t",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final d:Lcom/piriform/ccleaner/ui/fragment/ah;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/a/h;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/t;-><init>(Lcom/piriform/ccleaner/a/h;)V

    .line 1084
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/t;->c:Lcom/piriform/ccleaner/a/h;

    .line 17
    invoke-static {v0}, Lcom/piriform/ccleaner/ui/fragment/ah$a;->a(Lcom/piriform/ccleaner/a/h;)Lcom/piriform/ccleaner/ui/fragment/ah$a;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/piriform/ccleaner/ui/fragment/ah;

    invoke-direct {v1, v0}, Lcom/piriform/ccleaner/ui/fragment/ah;-><init>(Lcom/piriform/ccleaner/ui/fragment/ah$a;)V

    iput-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/aj;->d:Lcom/piriform/ccleaner/ui/fragment/ah;

    .line 19
    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/piriform/ccleaner/a/a/a;)V
    .locals 4

    .prologue
    .line 12
    check-cast p1, Lcom/piriform/ccleaner/a/a/q;

    .line 2197
    iget-object v0, p1, Lcom/piriform/ccleaner/a/a/q;->l:Ljava/util/List;

    .line 2024
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/aj;->b:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/core/a/h;->f()V

    .line 2025
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/aj;->d:Lcom/piriform/ccleaner/ui/fragment/ah;

    .line 3049
    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/fragment/ah;->a()Lcom/piriform/ccleaner/core/d;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2026
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/f/j;

    .line 2027
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/aj;->b:Lcom/piriform/ccleaner/core/a/h;

    new-instance v3, Lcom/piriform/ccleaner/ui/b/ab;

    invoke-direct {v3, v0}, Lcom/piriform/ccleaner/ui/b/ab;-><init>(Lcom/piriform/ccleaner/f/j;)V

    sget-object v0, Lcom/piriform/ccleaner/a/c;->a:Lcom/piriform/ccleaner/a/c;

    invoke-virtual {v2, v3, v0}, Lcom/piriform/ccleaner/core/a/h;->b(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    goto :goto_0

    .line 12
    :cond_0
    return-void
.end method
