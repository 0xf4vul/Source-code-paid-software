.class final Lcom/google/android/gms/common/internal/q$2;
.super Lcom/google/android/gms/common/internal/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/internal/q;->a(Landroid/support/v4/app/h;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/support/v4/app/h;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/support/v4/app/h;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/q$2;->a:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/q$2;->b:Landroid/support/v4/app/h;

    iput p3, p0, Lcom/google/android/gms/common/internal/q$2;->c:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/q$2;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/q$2;->b:Landroid/support/v4/app/h;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/q$2;->a:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/common/internal/q$2;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/h;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
