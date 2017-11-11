.class public Lcom/google/android/gms/internal/zzbmp;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbmp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I
    .annotation runtime Lcom/google/android/gms/internal/gb;
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "federatedId"
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "displayName"
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "photoUrl"
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "providerId"
    .end annotation
.end field

.field f:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "rawUserInfo"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbmp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbmp;->a:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbmp;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbmp;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbmp;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbmp;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbmp;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbmp;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/gl;->a(Lcom/google/android/gms/internal/zzbmp;Landroid/os/Parcel;)V

    return-void
.end method
