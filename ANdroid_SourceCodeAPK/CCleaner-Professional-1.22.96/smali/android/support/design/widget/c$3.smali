.class final Landroid/support/design/widget/c$3;
.super Landroid/support/design/widget/BottomSheetBehavior$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/c;


# direct methods
.method constructor <init>(Landroid/support/design/widget/c;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Landroid/support/design/widget/c$3;->a:Landroid/support/design/widget/c;

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 203
    iget-object v0, p0, Landroid/support/design/widget/c$3;->a:Landroid/support/design/widget/c;

    invoke-virtual {v0}, Landroid/support/design/widget/c;->cancel()V

    .line 205
    :cond_0
    return-void
.end method
