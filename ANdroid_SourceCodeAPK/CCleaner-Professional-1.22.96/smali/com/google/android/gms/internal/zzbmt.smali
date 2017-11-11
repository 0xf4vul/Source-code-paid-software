.class public Lcom/google/android/gms/internal/zzbmt;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbmt;",
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
        a = "email"
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "newEmail"
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "requestType"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbmt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbmt;->a:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbmt;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbmt;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbmt;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbmt;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/gn;->a(Lcom/google/android/gms/internal/zzbmt;Landroid/os/Parcel;)V

    return-void
.end method
