.class final Lcom/b/a/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/f$b;,
        Lcom/b/a/c/f$a;
    }
.end annotation


# instance fields
.field final a:Lcom/b/a/c/f$b;

.field final b:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog$Builder;Lcom/b/a/c/f$b;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/b/a/c/f;->a:Lcom/b/a/c/f$b;

    .line 133
    iput-object p1, p0, Lcom/b/a/c/f;->b:Landroid/app/AlertDialog$Builder;

    .line 134
    return-void
.end method
