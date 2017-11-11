.class public final Lcom/piriform/ccleaner/ui/c/a;
.super Landroid/support/v4/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/b/a",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/piriform/ccleaner/settings/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final o:Lcom/piriform/ccleaner/settings/b;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/settings/c;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/settings/b;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v4/b/a;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lcom/piriform/ccleaner/ui/c/a;->o:Lcom/piriform/ccleaner/settings/b;

    .line 20
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/settings/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/c/a;->p:Ljava/util/List;

    .line 1226
    iget-boolean v0, p0, Landroid/support/v4/b/d;->j:Z

    .line 31
    if-eqz v0, :cond_0

    .line 32
    invoke-super {p0, p1}, Landroid/support/v4/b/a;->a(Ljava/lang/Object;)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/ui/c/a;->a(Ljava/util/List;)V

    return-void
.end method

.method public final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    .line 3024
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/c/a;->o:Lcom/piriform/ccleaner/settings/b;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/settings/b;->a()Ljava/util/List;

    move-result-object v0

    .line 12
    return-object v0
.end method

.method protected final f()V
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/c/a;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/c/a;->p:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/c/a;->a(Ljava/util/List;)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/c/a;->q:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Landroid/support/v4/b/d$a;

    invoke-direct {v0, p0}, Landroid/support/v4/b/d$a;-><init>(Landroid/support/v4/b/d;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/c/a;->q:Landroid/database/ContentObserver;

    .line 44
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/c/a;->o:Lcom/piriform/ccleaner/settings/b;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/c/a;->q:Landroid/database/ContentObserver;

    .line 2117
    iget-object v0, v0, Lcom/piriform/ccleaner/settings/b;->a:Landroid/content/ContentResolver;

    sget-object v2, Lcom/piriform/ccleaner/data/CCleanerContentProvider$b;->a:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/c/a;->m()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/c/a;->p:Ljava/util/List;

    if-nez v0, :cond_3

    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/c/a;->h()V

    .line 50
    :cond_3
    return-void
.end method

.method protected final j()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/c/a;->q:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/c/a;->o:Lcom/piriform/ccleaner/settings/b;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/c/a;->q:Landroid/database/ContentObserver;

    .line 2121
    iget-object v0, v0, Lcom/piriform/ccleaner/settings/b;->a:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/c/a;->q:Landroid/database/ContentObserver;

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/c/a;->g()Z

    .line 59
    return-void
.end method

.method protected final l()V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/c/a;->j()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/c/a;->p:Ljava/util/List;

    .line 65
    return-void
.end method
