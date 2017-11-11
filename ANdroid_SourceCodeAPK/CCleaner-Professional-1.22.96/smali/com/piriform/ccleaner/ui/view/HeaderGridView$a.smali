.class final Lcom/piriform/ccleaner/ui/view/HeaderGridView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/view/HeaderGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/view/HeaderGridView;

.field private final b:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/ui/view/HeaderGridView;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$a;->a:Lcom/piriform/ccleaner/ui/view/HeaderGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p2, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$a;->b:Landroid/widget/AdapterView$OnItemClickListener;

    .line 413
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$a;->a:Lcom/piriform/ccleaner/ui/view/HeaderGridView;

    invoke-static {v0, p3}, Lcom/piriform/ccleaner/ui/view/HeaderGridView;->a(Lcom/piriform/ccleaner/ui/view/HeaderGridView;I)I

    move-result v3

    .line 418
    if-ltz v3, :cond_0

    .line 419
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$a;->b:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 421
    :cond_0
    return-void
.end method
