.class final Lcom/piriform/ccleaner/ui/fragment/ai$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/ui/fragment/ai;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/f/j;

.field final synthetic b:Lcom/piriform/ccleaner/ui/fragment/ai;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/fragment/ai;Lcom/piriform/ccleaner/f/j;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/ai$1;->b:Lcom/piriform/ccleaner/ui/fragment/ai;

    iput-object p2, p0, Lcom/piriform/ccleaner/ui/fragment/ai$1;->a:Lcom/piriform/ccleaner/f/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ai$1;->b:Lcom/piriform/ccleaner/ui/fragment/ai;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/fragment/ai;->a(Lcom/piriform/ccleaner/ui/fragment/ai;)Lcom/piriform/ccleaner/ui/fragment/ai$a;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/ai$1;->a:Lcom/piriform/ccleaner/f/j;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/ui/fragment/ai$a;->a(Lcom/piriform/ccleaner/f/j;)V

    .line 69
    return-void
.end method
