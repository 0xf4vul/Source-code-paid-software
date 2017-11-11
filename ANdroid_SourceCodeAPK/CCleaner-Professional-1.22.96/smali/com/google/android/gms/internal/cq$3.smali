.class final Lcom/google/android/gms/internal/cq$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cq;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/google/android/gms/internal/cq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cq;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cq$3;->b:Lcom/google/android/gms/internal/cq;

    iput-wide p2, p0, Lcom/google/android/gms/internal/cq$3;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cq$3;->b:Lcom/google/android/gms/internal/cq;

    iget-wide v2, p0, Lcom/google/android/gms/internal/cq$3;->a:J

    .line 1000
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/cq;->b(J)V

    .line 0
    return-void
.end method
