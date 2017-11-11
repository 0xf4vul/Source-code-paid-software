.class final Lcom/google/android/gms/internal/xg$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/xg;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/internal/xg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xg$2;->c:Lcom/google/android/gms/internal/xg;

    iput-object p2, p0, Lcom/google/android/gms/internal/xg$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/xg$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/xg$2;->c:Lcom/google/android/gms/internal/xg;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/xg;->a:Lcom/google/android/gms/internal/aer;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/xg$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/xg$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/aer;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
