.class final Landroid/support/v4/c/a/g$a;
.super Landroid/support/v4/c/a/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/c/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v4/c/a/e$a;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/support/v4/c/a/e$a;-><init>(Landroid/support/v4/c/a/e$a;)V

    .line 58
    return-void
.end method


# virtual methods
.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Landroid/support/v4/c/a/g;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/c/a/g;-><init>(Landroid/support/v4/c/a/e$a;Landroid/content/res/Resources;)V

    return-object v0
.end method
