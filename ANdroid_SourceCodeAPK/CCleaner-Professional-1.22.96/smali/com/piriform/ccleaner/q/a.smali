.class public final Lcom/piriform/ccleaner/q/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/q/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/piriform/ccleaner/q/c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/piriform/ccleaner/q/c$a",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/q/a;->b:Ljava/util/Set;

    .line 13
    iget-object v0, p0, Lcom/piriform/ccleaner/q/a;->b:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/q/a;->c:Ljava/util/Set;

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/q/a;->d:Ljava/util/Set;

    return-void
.end method

.method private f()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/piriform/ccleaner/q/a;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/q/c$a;

    .line 80
    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/q/c$a;->a(Lcom/piriform/ccleaner/q/c;)V

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/q/c$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/q/c$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/piriform/ccleaner/q/a;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public final a(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 36
    if-eqz p2, :cond_0

    .line 37
    iget-object v0, p0, Lcom/piriform/ccleaner/q/a;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1085
    :goto_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    invoke-direct {p0}, Lcom/piriform/ccleaner/q/a;->f()V

    .line 42
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/q/a;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/piriform/ccleaner/q/a;->a:Z

    .line 19
    if-nez p1, :cond_0

    .line 20
    iget-object v0, p0, Lcom/piriform/ccleaner/q/a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 22
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/piriform/ccleaner/q/a;->a:Z

    return v0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/piriform/ccleaner/q/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/q/a;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/piriform/ccleaner/q/a;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final b(Lcom/piriform/ccleaner/q/c$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/q/c$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/piriform/ccleaner/q/a;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/piriform/ccleaner/q/a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/piriform/ccleaner/q/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/piriform/ccleaner/q/a;->b:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    iget-object v0, p0, Lcom/piriform/ccleaner/q/a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 59
    invoke-direct {p0}, Lcom/piriform/ccleaner/q/a;->f()V

    .line 61
    :cond_0
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/piriform/ccleaner/q/a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
