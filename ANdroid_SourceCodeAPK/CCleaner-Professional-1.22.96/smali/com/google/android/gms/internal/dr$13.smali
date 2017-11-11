.class final Lcom/google/android/gms/internal/dr$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dr;->a(Lcom/google/android/gms/internal/zzatg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzatg;

.field final synthetic b:Lcom/google/android/gms/internal/dr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dr;Lcom/google/android/gms/internal/zzatg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dr$13;->b:Lcom/google/android/gms/internal/dr;

    iput-object p2, p0, Lcom/google/android/gms/internal/dr$13;->a:Lcom/google/android/gms/internal/zzatg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dr$13;->b:Lcom/google/android/gms/internal/dr;

    invoke-static {v0}, Lcom/google/android/gms/internal/dr;->a(Lcom/google/android/gms/internal/dr;)Lcom/google/android/gms/internal/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->v()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dr$13;->b:Lcom/google/android/gms/internal/dr;

    invoke-static {v0}, Lcom/google/android/gms/internal/dr;->a(Lcom/google/android/gms/internal/dr;)Lcom/google/android/gms/internal/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dr$13;->a:Lcom/google/android/gms/internal/zzatg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/zzatg;)V

    return-void
.end method
