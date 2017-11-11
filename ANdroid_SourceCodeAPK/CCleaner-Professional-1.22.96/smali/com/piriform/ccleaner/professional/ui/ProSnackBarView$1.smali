.class final Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$1;->a:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$1;->a:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;

    invoke-static {v0}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->b(Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;)Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$1;->a:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;

    invoke-static {v1}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;->a(Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;)Lcom/piriform/ccleaner/professional/ui/b$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->a(Lcom/piriform/ccleaner/professional/ui/b$a;)V

    .line 38
    return-void
.end method
