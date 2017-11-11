.class public final Lcom/piriform/ccleaner/ui/fragment/d;
.super Landroid/support/v4/app/p;
.source "SourceFile"


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/ui/fragment/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/m;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/m;",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/ui/fragment/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p2}, Landroid/support/v4/app/p;-><init>(Landroid/support/v4/app/m;)V

    .line 18
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/d;->c:Landroid/content/Context;

    .line 19
    iput-object p3, p0, Lcom/piriform/ccleaner/ui/fragment/d;->b:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/h;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/fragment/e;

    .line 1034
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/fragment/e;->f:Lcom/piriform/ccleaner/core/data/e;

    .line 24
    invoke-static {v0}, Lcom/piriform/ccleaner/ui/fragment/c;->a(Lcom/piriform/ccleaner/core/data/e;)Lcom/piriform/ccleaner/ui/fragment/c;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final b(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 39
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/d;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/fragment/e;

    .line 2025
    iget v0, v0, Lcom/piriform/ccleaner/ui/fragment/e;->e:I

    .line 39
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, -0x2

    return v0
.end method
