.class public final Lcom/piriform/ccleaner/ui/fragment/p;
.super Landroid/support/v4/app/p;
.source "SourceFile"


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/ui/fragment/am;",
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
            "Lcom/piriform/ccleaner/ui/fragment/am;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p2}, Landroid/support/v4/app/p;-><init>(Landroid/support/v4/app/m;)V

    .line 21
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/p;->c:Landroid/content/Context;

    .line 22
    iput-object p3, p0, Lcom/piriform/ccleaner/ui/fragment/p;->b:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/h;
    .locals 2

    .prologue
    .line 27
    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/p$1;->a:[I

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/p;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/fragment/am;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/fragment/am;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 35
    new-instance v0, Lcom/novoda/notils/b/a;

    const-string/jumbo v1, "Missing case in switch statement"

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :pswitch_0
    sget-object v0, Lcom/piriform/ccleaner/core/data/h;->b:Lcom/piriform/ccleaner/core/data/h;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/fragment/o;->a(Lcom/piriform/ccleaner/core/data/h;)Lcom/piriform/ccleaner/ui/fragment/o;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    .line 31
    :pswitch_1
    sget-object v0, Lcom/piriform/ccleaner/core/data/h;->c:Lcom/piriform/ccleaner/core/data/h;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/fragment/o;->a(Lcom/piriform/ccleaner/core/data/h;)Lcom/piriform/ccleaner/ui/fragment/o;

    move-result-object v0

    goto :goto_0

    .line 33
    :pswitch_2
    sget-object v0, Lcom/piriform/ccleaner/core/data/h;->a:Lcom/piriform/ccleaner/core/data/h;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/fragment/o;->a(Lcom/piriform/ccleaner/core/data/h;)Lcom/piriform/ccleaner/ui/fragment/o;

    move-result-object v0

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final b(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 51
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/p;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/p;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/fragment/am;

    .line 1017
    iget v0, v0, Lcom/piriform/ccleaner/ui/fragment/am;->d:I

    .line 51
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, -0x2

    return v0
.end method
