.class final Lcom/google/android/gms/internal/zy$4;
.super Lcom/google/android/gms/internal/zx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/wb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/wb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zy$4;->a:Lcom/google/android/gms/internal/wb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zx$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/xi;)V
    .locals 2

    const-string/jumbo v0, "/nativeAdCustomClick"

    iget-object v1, p0, Lcom/google/android/gms/internal/zy$4;->a:Lcom/google/android/gms/internal/wb;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/xi;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    return-void
.end method
