.class final Landroid/support/v4/view/x$j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/aa$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/x$j;->a(Landroid/view/View;Landroid/support/v4/view/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/r;

.field final synthetic b:Landroid/support/v4/view/x$j;


# direct methods
.method constructor <init>(Landroid/support/v4/view/x$j;Landroid/support/v4/view/r;)V
    .locals 0

    .prologue
    .line 1662
    iput-object p1, p0, Landroid/support/v4/view/x$j$1;->b:Landroid/support/v4/view/x$j;

    iput-object p2, p0, Landroid/support/v4/view/x$j$1;->a:Landroid/support/v4/view/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1665
    invoke-static {p2}, Landroid/support/v4/view/am;->a(Ljava/lang/Object;)Landroid/support/v4/view/am;

    move-result-object v0

    .line 1666
    iget-object v1, p0, Landroid/support/v4/view/x$j$1;->a:Landroid/support/v4/view/r;

    invoke-interface {v1, p1, v0}, Landroid/support/v4/view/r;->a(Landroid/view/View;Landroid/support/v4/view/am;)Landroid/support/v4/view/am;

    move-result-object v0

    .line 1667
    invoke-static {v0}, Landroid/support/v4/view/am;->a(Landroid/support/v4/view/am;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
