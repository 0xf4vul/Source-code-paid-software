.class final Lcom/piriform/ccleaner/appmanager/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:J

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/piriform/ccleaner/q/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/q/c",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/piriform/ccleaner/core/data/b;",
            ">;"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "initialised in a setter called from constructor"
        value = {
            "NP_NONNULL_FIELD_NOT_INITIALIZED_IN_CONSTRUCTOR"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/o;->b:Ljava/util/List;

    .line 20
    new-instance v0, Lcom/piriform/ccleaner/q/a;

    invoke-direct {v0}, Lcom/piriform/ccleaner/q/a;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/o;->c:Lcom/piriform/ccleaner/q/c;

    .line 21
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/o;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v0}, Lcom/piriform/ccleaner/q/c;->b()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/o;->d:Ljava/util/Set;

    .line 27
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/appmanager/o;->a(Ljava/util/Comparator;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/o;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v0}, Lcom/piriform/ccleaner/q/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/o;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v0}, Lcom/piriform/ccleaner/q/c;->d()V

    .line 40
    :cond_0
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/core/data/AndroidPackage;Z)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/o;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v0, p1, p2}, Lcom/piriform/ccleaner/q/c;->a(Ljava/lang/Object;Z)V

    .line 96
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/q/c$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/q/c$a",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/o;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/q/c;->a(Lcom/piriform/ccleaner/q/c$a;)V

    .line 115
    return-void
.end method

.method public final a(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/piriform/ccleaner/appmanager/o$1;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/appmanager/o$1;-><init>(Lcom/piriform/ccleaner/appmanager/o;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/o;->e:Ljava/util/Comparator;

    .line 1146
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/o;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/o;->e:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/o;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v0}, Lcom/piriform/ccleaner/q/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
