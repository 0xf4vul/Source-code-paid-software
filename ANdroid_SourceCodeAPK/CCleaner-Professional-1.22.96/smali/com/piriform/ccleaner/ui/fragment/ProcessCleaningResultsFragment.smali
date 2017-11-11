.class public Lcom/piriform/ccleaner/ui/fragment/ProcessCleaningResultsFragment;
.super Lcom/piriform/ccleaner/ui/fragment/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/ui/fragment/t",
        "<",
        "Lcom/piriform/ccleaner/a/a/v;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lcom/piriform/ccleaner/ui/fragment/an;

.field private e:Lcom/piriform/ccleaner/a/a/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/piriform/ccleaner/a/h;->f:Lcom/piriform/ccleaner/a/h;

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/t;-><init>(Lcom/piriform/ccleaner/a/h;)V

    .line 25
    return-void
.end method

.method private a(Lcom/piriform/ccleaner/ui/fragment/an$a;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ProcessCleaningResultsFragment;->d:Lcom/piriform/ccleaner/ui/fragment/an;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/fragment/an;->a(Lcom/piriform/ccleaner/ui/fragment/an$a;)V

    .line 56
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/ProcessCleaningResultsFragment;->b()V

    .line 57
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 66
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ProcessCleaningResultsFragment;->b:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->f()V

    .line 68
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ProcessCleaningResultsFragment;->e:Lcom/piriform/ccleaner/a/a/v;

    .line 1138
    iget-object v0, v0, Lcom/piriform/ccleaner/a/a/v;->l:Ljava/util/List;

    .line 69
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/ProcessCleaningResultsFragment;->d:Lcom/piriform/ccleaner/ui/fragment/an;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/fragment/an;->a(Ljava/util/List;)V

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/i;

    .line 71
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/ProcessCleaningResultsFragment;->b:Lcom/piriform/ccleaner/core/a/h;

    new-instance v3, Lcom/piriform/ccleaner/ui/b/w;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/piriform/ccleaner/ui/b/w;-><init>(Lcom/piriform/ccleaner/core/data/i;Z)V

    sget-object v0, Lcom/piriform/ccleaner/a/c;->a:Lcom/piriform/ccleaner/a/c;

    invoke-virtual {v2, v3, v0}, Lcom/piriform/ccleaner/core/a/h;->b(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/t;->a(Landroid/os/Bundle;)V

    .line 30
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/an;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/fragment/an;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ProcessCleaningResultsFragment;->d:Lcom/piriform/ccleaner/ui/fragment/an;

    .line 32
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/ProcessCleaningResultsFragment;->k()V

    .line 33
    return-void
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f110002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 38
    return-void
.end method

.method protected final synthetic a(Lcom/piriform/ccleaner/a/a/a;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/piriform/ccleaner/a/a/v;

    .line 2061
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/ProcessCleaningResultsFragment;->e:Lcom/piriform/ccleaner/a/a/v;

    .line 2062
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/ProcessCleaningResultsFragment;->b()V

    .line 18
    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 42
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 50
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/t;->a(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 44
    :pswitch_0
    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/an$a;->a:Lcom/piriform/ccleaner/ui/fragment/an$a;

    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/ui/fragment/ProcessCleaningResultsFragment;->a(Lcom/piriform/ccleaner/ui/fragment/an$a;)V

    goto :goto_0

    .line 47
    :pswitch_1
    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/an$a;->b:Lcom/piriform/ccleaner/ui/fragment/an$a;

    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/ui/fragment/ProcessCleaningResultsFragment;->a(Lcom/piriform/ccleaner/ui/fragment/an$a;)V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x7f10017f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
