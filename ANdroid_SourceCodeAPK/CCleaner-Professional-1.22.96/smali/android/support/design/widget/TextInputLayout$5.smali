.class final Landroid/support/design/widget/TextInputLayout$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/v$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TextInputLayout;->a(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .locals 0

    .prologue
    .line 1426
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout$5;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/design/widget/v;)V
    .locals 2

    .prologue
    .line 1429
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout$5;->a:Landroid/support/design/widget/TextInputLayout;

    iget-object v0, v0, Landroid/support/design/widget/TextInputLayout;->g:Landroid/support/design/widget/f;

    .line 2179
    iget-object v1, p1, Landroid/support/design/widget/v;->a:Landroid/support/design/widget/v$e;

    invoke-virtual {v1}, Landroid/support/design/widget/v$e;->d()F

    move-result v1

    .line 1429
    invoke-virtual {v0, v1}, Landroid/support/design/widget/f;->a(F)V

    .line 1430
    return-void
.end method
