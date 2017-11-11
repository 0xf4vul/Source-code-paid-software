.class final Lcom/google/android/gms/internal/yq$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/yq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/yq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/yq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/yq$2;->a:Lcom/google/android/gms/internal/yq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/yq$2;->a:Lcom/google/android/gms/internal/yq;

    const-string/jumbo v1, "Operation denied by user."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/yq;->a(Ljava/lang/String;)V

    return-void
.end method
