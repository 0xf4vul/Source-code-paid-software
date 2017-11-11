.class final Lcom/piriform/ccleaner/ui/view/ListViewItem$1;
.super Lcom/piriform/ccleaner/p/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/view/ListViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/p/b",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/view/ListViewItem;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/view/ListViewItem;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem$1;->a:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    invoke-direct {p0}, Lcom/piriform/ccleaner/p/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 32
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1035
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem$1;->a:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->a(Lcom/piriform/ccleaner/ui/view/ListViewItem;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ListViewItem$1;->a:Lcom/piriform/ccleaner/ui/view/ListViewItem;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->a(Lcom/piriform/ccleaner/ui/view/ListViewItem;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 32
    :cond_0
    return-void
.end method
