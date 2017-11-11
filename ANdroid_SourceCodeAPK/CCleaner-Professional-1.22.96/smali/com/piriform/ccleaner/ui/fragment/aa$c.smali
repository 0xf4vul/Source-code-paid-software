.class final Lcom/piriform/ccleaner/ui/fragment/aa$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/fragment/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/fragment/aa;


# direct methods
.method private constructor <init>(Lcom/piriform/ccleaner/ui/fragment/aa;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/aa$c;->a:Lcom/piriform/ccleaner/ui/fragment/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/piriform/ccleaner/ui/fragment/aa;B)V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/aa$c;-><init>(Lcom/piriform/ccleaner/ui/fragment/aa;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 286
    packed-switch p2, :pswitch_data_0

    .line 296
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unhandled case: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :pswitch_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa$c;->a:Lcom/piriform/ccleaner/ui/fragment/aa;

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/fragment/aa;->ac:Lcom/piriform/ccleaner/core/a/h;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/aa$c;->a:Lcom/piriform/ccleaner/ui/fragment/aa;

    invoke-static {v1}, Lcom/piriform/ccleaner/ui/fragment/aa;->a(Lcom/piriform/ccleaner/ui/fragment/aa;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/core/a/h;->a(I)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v0

    .line 1038
    iget-boolean v0, v0, Lcom/piriform/ccleaner/core/a/b;->a:Z

    .line 288
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 289
    :goto_0
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/aa$c;->a:Lcom/piriform/ccleaner/ui/fragment/aa;

    iget-object v1, v1, Lcom/piriform/ccleaner/ui/fragment/aa;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/core/a/h;->a(Z)V

    .line 298
    :goto_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa$c;->a:Lcom/piriform/ccleaner/ui/fragment/aa;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/fragment/aa;->E_()V

    .line 299
    return-void

    .line 288
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 292
    :pswitch_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/aa$c;->a:Lcom/piriform/ccleaner/ui/fragment/aa;

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/fragment/aa;->ac:Lcom/piriform/ccleaner/core/a/h;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/aa$c;->a:Lcom/piriform/ccleaner/ui/fragment/aa;

    invoke-static {v1}, Lcom/piriform/ccleaner/ui/fragment/aa;->a(Lcom/piriform/ccleaner/ui/fragment/aa;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/core/a/h;->a(I)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v0

    .line 1059
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 292
    check-cast v0, Lcom/piriform/ccleaner/core/data/f;

    .line 293
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/aa$c;->a:Lcom/piriform/ccleaner/ui/fragment/aa;

    iget-object v1, v1, Lcom/piriform/ccleaner/ui/fragment/aa;->ac:Lcom/piriform/ccleaner/core/a/h;

    new-instance v2, Lcom/piriform/ccleaner/ui/fragment/aa$a;

    invoke-direct {v2, v0}, Lcom/piriform/ccleaner/ui/fragment/aa$a;-><init>(Lcom/piriform/ccleaner/core/data/f;)V

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/core/a/h;->a(Lcom/piriform/ccleaner/v/b;)V

    goto :goto_1

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
