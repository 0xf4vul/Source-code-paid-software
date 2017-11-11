.class final Landroid/support/v4/c/a/f$a;
.super Landroid/support/v4/c/a/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/c/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v4/c/a/e$a;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/support/v4/c/a/e$a;-><init>(Landroid/support/v4/c/a/e$a;)V

    .line 53
    return-void
.end method


# virtual methods
.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Landroid/support/v4/c/a/f;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/c/a/f;-><init>(Landroid/support/v4/c/a/e$a;Landroid/content/res/Resources;)V

    return-object v0
.end method
