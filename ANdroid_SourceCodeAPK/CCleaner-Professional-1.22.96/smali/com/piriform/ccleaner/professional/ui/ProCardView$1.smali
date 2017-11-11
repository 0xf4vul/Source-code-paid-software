.class final Lcom/piriform/ccleaner/professional/ui/ProCardView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/professional/ui/ProCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/professional/ui/ProCardView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/professional/ui/ProCardView;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView$1;->a:Lcom/piriform/ccleaner/professional/ui/ProCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 59
    :pswitch_0
    new-instance v0, Lcom/novoda/notils/b/a;

    const-string/jumbo v1, "Unhandled pro upgrade UI element!"

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView$1;->a:Lcom/piriform/ccleaner/professional/ui/ProCardView;

    invoke-static {v0}, Lcom/piriform/ccleaner/professional/ui/ProCardView;->b(Lcom/piriform/ccleaner/professional/ui/ProCardView;)Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView$1;->a:Lcom/piriform/ccleaner/professional/ui/ProCardView;

    invoke-static {v1}, Lcom/piriform/ccleaner/professional/ui/ProCardView;->a(Lcom/piriform/ccleaner/professional/ui/ProCardView;)Lcom/piriform/ccleaner/professional/ui/b$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->a(Lcom/piriform/ccleaner/professional/ui/b$a;)V

    .line 57
    :goto_0
    return-void

    .line 53
    :pswitch_2
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView$1;->a:Lcom/piriform/ccleaner/professional/ui/ProCardView;

    invoke-static {v0}, Lcom/piriform/ccleaner/professional/ui/ProCardView;->a(Lcom/piriform/ccleaner/professional/ui/ProCardView;)Lcom/piriform/ccleaner/professional/ui/b$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/professional/ui/b$a;->d()V

    goto :goto_0

    .line 56
    :pswitch_3
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView$1;->a:Lcom/piriform/ccleaner/professional/ui/ProCardView;

    invoke-static {v0}, Lcom/piriform/ccleaner/professional/ui/ProCardView;->a(Lcom/piriform/ccleaner/professional/ui/ProCardView;)Lcom/piriform/ccleaner/professional/ui/b$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/professional/ui/b$a;->a()V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x7f100167
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
