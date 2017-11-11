.class final Lcom/google/android/gms/internal/g$a$1;
.super Lcom/google/android/gms/internal/z$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/g$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/google/android/gms/internal/g$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/g$a;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/g$a$1;->b:Lcom/google/android/gms/internal/g$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/g$a$1;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/internal/z$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/g$a$1;->b:Lcom/google/android/gms/internal/g$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/g;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/g$a$1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/g$a$1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
